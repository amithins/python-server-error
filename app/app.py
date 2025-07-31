    \"\"\"Endpoint that generates an error when enabled.\"\"\"
    global error_enabled
    
    if error_enabled:
        error_message = "Error triggered successfully"
        result = error_message + " - This was the intentional error"
        return jsonify({'result': result})
    else:
        return jsonify({