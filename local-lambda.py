import json

def lambda_handler(event, context):
    # TODO implement

    print("hello this is user, using code from local computer  ")
    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda! from my local computer')
    }

