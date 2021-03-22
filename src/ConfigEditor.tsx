import React, { ChangeEvent, PureComponent } from 'react';
import { LegacyForms } from '@grafana/ui';
import { DataSourcePluginOptionsEditorProps } from '@grafana/data';
import { MyDataSourceOptions } from './types';

const { SecretFormField, FormField } = LegacyForms;

interface Props extends DataSourcePluginOptionsEditorProps<MyDataSourceOptions> {}

interface State {}

export class ConfigEditor extends PureComponent<Props, State> {
  onPathChange = (event: ChangeEvent<HTMLInputElement>) => {
    const { onOptionsChange, options } = this.props;
    const jsonData = {
      ...options.jsonData,
      path: event.target.value,
    };
    onOptionsChange({ ...options, jsonData });
  };

  render() {
    const { options } = this.props;
    const { jsonData } = options;
    return (
      <div className="gf-form-group">
        <div className="gf-form">
          <FormField
            label="URL"
            labelWidth={6}
            inputWidth={30}
            onChange={this.onPathChange}
            value={jsonData.url || ''}
            placeholder="Solr URL (https://solr.com:8983/solr)"
          />
        </div>
        <div className="gf-form">
          <FormField
            label="Collection"
            labelWidth={6}
            inputWidth={30}
            onChange={this.onPathChange}
            value={jsonData.collection || ''}
            placeholder="json field returned to frontend"
          />
        </div>
      </div>
    );
  }
}
