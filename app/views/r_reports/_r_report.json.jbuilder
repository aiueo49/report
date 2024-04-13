json.extract! r_report, :id, :title, :content, :created_at, :updated_at
json.url r_report_url(r_report, format: :json)
