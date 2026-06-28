.class public final Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;
.super Ljava/io/BufferedReader;
.source "VCardParserImpl_V21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardParserImpl_V21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "CustomBufferedReader"
.end annotation


# instance fields
.field private mNextLine:Ljava/lang/String;

.field private mNextLineIsValid:Z

.field private mTime:J


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public getTotalmillisecond()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    return-wide v0
.end method

.method public peekLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-boolean v0, p0, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLineIsValid:Z

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 85
    iget-wide v5, p0, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    sub-long/2addr v3, v0

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    .line 87
    iput-object v2, p0, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLine:Ljava/lang/String;

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLineIsValid:Z

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLine:Ljava/lang/String;

    return-object p0
.end method

.method public readLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-boolean v0, p0, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLineIsValid:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLine:Ljava/lang/String;

    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLine:Ljava/lang/String;

    const/4 v1, 0x0

    .line 66
    iput-boolean v1, p0, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mNextLineIsValid:Z

    return-object v0

    .line 70
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 71
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 73
    iget-wide v5, p0, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    sub-long/2addr v3, v0

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    return-object v2
.end method
