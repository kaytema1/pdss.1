json.extract! prescription_item, :id, :drug_name, :quantity, :price, :drug_form, :prescription_id, :created_at, :updated_at
json.url prescription_item_url(prescription_item, format: :json)
