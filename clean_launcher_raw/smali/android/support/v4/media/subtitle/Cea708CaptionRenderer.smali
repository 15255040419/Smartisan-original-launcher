.class public Landroid/support/v4/media/subtitle/Cea708CaptionRenderer;
.super Landroid/support/v4/media/subtitle/SubtitleController$Renderer;
.source "Cea708CaptionRenderer.java"


# instance fields
.field private mCCWidget:Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/subtitle/SubtitleController$Renderer;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createTrack(Landroid/media/MediaFormat;)Landroid/support/v4/media/subtitle/SubtitleTrack;
    .locals 2

    const-string v0, "mime"

    .line 1
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/cea-708"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer;->mCCWidget:Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget;

    iget-object v1, p0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget;-><init>(Landroid/support/v4/media/subtitle/Cea708CaptionRenderer;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer;->mCCWidget:Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget;

    .line 5
    :cond_0
    new-instance v0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CaptionTrack;

    iget-object p0, p0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer;->mCCWidget:Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CaptionTrack;-><init>(Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/media/MediaFormat;)V

    return-object v0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No matching format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public supports(Landroid/media/MediaFormat;)Z
    .locals 1

    const-string p0, "mime"

    .line 1
    invoke-virtual {p1, p0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "text/cea-708"

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
