.class public abstract Lcom/android/vcard/VCardParser;
.super Ljava/lang/Object;
.source "VCardParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addInterpreter(Lcom/android/vcard/VCardInterpreter;)V
.end method

.method public abstract cancel()V
.end method

.method public abstract parse(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation
.end method

.method public parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-virtual {p0, p2}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method public abstract parseOne(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation
.end method
