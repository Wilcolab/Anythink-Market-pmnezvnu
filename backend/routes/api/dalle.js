const openai = require('openai')

const generateDalleImage = async (prompt) => {
  const response = await openai.createImage({
    prompt,
    n: 1,
    size: "250x250"
  })
  return response.data.data[0].url;
}