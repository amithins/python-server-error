    if error_enabled:
        # INTENTIONAL ERROR: This will cause a NameError because 'undefined_variable' is not defined
        # This is the error that can be fixed in a PR
        #result = undefined_variable + "This should cause an error"
        result = undefined_variable + "This should cause an error"
        result1 = undefined_variable + "This should cause an error"
        return jsonify({'result': result})
    else:
        return jsonify({

if __name__ == '__main__':
    port = int(os.environ.get('PORT', 5000))
\ No newline at end of file
    app.run(host='0.0.0.0', port=port, debug=True)