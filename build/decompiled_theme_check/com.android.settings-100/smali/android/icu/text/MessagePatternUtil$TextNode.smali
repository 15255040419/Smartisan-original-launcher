.class public Landroid/icu/text/MessagePatternUtil$TextNode;
.super Landroid/icu/text/MessagePatternUtil$MessageContentsNode;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextNode"
.end annotation


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 188
    sget-object v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->TEXT:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;-><init>(Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;Landroid/icu/text/MessagePatternUtil$1;)V

    .line 189
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$TextNode;->text:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/icu/text/MessagePatternUtil$1;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePatternUtil$TextNode;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/icu/text/MessagePatternUtil$TextNode;)Ljava/lang/String;
    .locals 0

    .line 172
    iget-object p0, p0, Landroid/icu/text/MessagePatternUtil$TextNode;->text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Landroid/icu/text/MessagePatternUtil$TextNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 172
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$TextNode;->text:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 0

    .line 177
    iget-object p0, p0, Landroid/icu/text/MessagePatternUtil$TextNode;->text:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u00ab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/MessagePatternUtil$TextNode;->text:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "\u00bb"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
