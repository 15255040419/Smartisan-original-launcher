.class public Landroid/icu/text/MessagePatternUtil$MessageContentsNode;
.super Landroid/icu/text/MessagePatternUtil$Node;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageContentsNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;
    }
.end annotation


# instance fields
.field private type:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;


# direct methods
.method private constructor <init>(Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;)V
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0, v0}, Landroid/icu/text/MessagePatternUtil$Node;-><init>(Landroid/icu/text/MessagePatternUtil$1;)V

    .line 160
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;->type:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;Landroid/icu/text/MessagePatternUtil$1;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;-><init>(Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;)V

    return-void
.end method

.method static synthetic access$600()Landroid/icu/text/MessagePatternUtil$MessageContentsNode;
    .locals 1

    .line 120
    invoke-static {}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;->createReplaceNumberNode()Landroid/icu/text/MessagePatternUtil$MessageContentsNode;

    move-result-object v0

    return-object v0
.end method

.method private static createReplaceNumberNode()Landroid/icu/text/MessagePatternUtil$MessageContentsNode;
    .locals 2

    .line 163
    new-instance v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;

    sget-object v1, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    invoke-direct {v0, v1}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;-><init>(Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;)V

    return-object v0
.end method


# virtual methods
.method public getType()Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;
    .locals 0

    .line 144
    iget-object p0, p0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;->type:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "{REPLACE_NUMBER}"

    return-object p0
.end method
