# MemoryPalAI

MemoryPalAI is an intelligent, context-aware AI assistant built to process documents, retain conversation history, and provide augmented responses using Retrieval-Augmented Generation (RAG).

## Features

- **Document Processing**: Upload and process documents (PDFs, text) and store their representations in a Vector DB.
- **Retrieval-Augmented Generation (RAG)**: Enhance language model responses with retrieved context from uploaded documents.
- **Conversational Memory**: Retains history to provide a continuous and context-aware interaction.
- **Audio Processing**: Support for audio transcription using OpenAI Whisper.
- **Vector Database**: Integration with Pinecone for efficient semantic search.

## Tech Stack

- **Frontend**: Streamlit
- **AI/LLM Framework**: LangChain, LangGraph, Google Generative AI, OpenAI Whisper
- **Vector Database**: Pinecone
- **Relational Database**: PostgreSQL / SQLAlchemy
- **Language**: Python 3.10+

## Setup & Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Akash26436/AAI_P.git
   cd AAI_P
   ```

2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

3. Configure Environment Variables:
   Create a `.env` file in the root directory and add the following keys (see `config.py` for all options):
   ```env
   PINECONE_API_KEY=your_pinecone_api_key
   PINECONE_INDEX_NAME=memorypalai
   GOOGLE_API_KEY=your_google_api_key
   GROQ_API_KEY=your_groq_api_key
   ```

4. Run the application:
   ```bash
   # Depending on the main entry point (e.g., frontend/app.py)
   streamlit run frontend/app.py
   ```

## Project Structure

- `app/`: Core backend logic including models, schemas, and configurations.
- `frontend/`: UI implementation using Streamlit.
- `lib/`: Additional libraries or scripts.
- `requirements.txt`: Python dependencies.
- `docker-compose.yml`: Docker configuration for spinning up required services.

## License

This project is licensed under the MIT License.
