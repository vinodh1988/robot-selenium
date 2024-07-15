from openai import OpenAI

client = OpenAI(api_key="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")

response = client.chat.completions.create(
  model="gpt-4o",
  messages=[
    {
      "role": "user",
      "content": [
        {"type": "text", "text": "What’s in this image?"},
        {
          "type": "image_url",
          "image_url": {
            "url": "https://media.springernature.com/lw685/springer-static/image/art%3A10.1007%2Fs11042-020-10151-w/MediaObjects/11042_2020_10151_Fig1_HTML.png",
          },
        },
      ],
    }
  ],
  max_tokens=300,
)

#print(response.choices[0])
print("----------------------------------------------------------------")
print(response.choices[0].message.content)