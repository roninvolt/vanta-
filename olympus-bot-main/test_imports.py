import sys
import os
import asyncio
import discord
from discord.ext import commands

sys.path.insert(0, os.path.abspath("."))
os.environ["TOKEN"] = "MOCK_TOKEN"

from core.Olympus import Olympus
from cogs import setup

async def test_setup():
    bot = Olympus()
    print("Bot initialized successfully.")
    try:
        async with bot:
            await setup(bot)
            print("Setup completed successfully.")
    except Exception as e:
        print("Error during setup:", e)
        import traceback
        traceback.print_exc()

if __name__ == "__main__":
    asyncio.run(test_setup())
