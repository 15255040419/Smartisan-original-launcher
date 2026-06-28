.class public Landroid/icu/text/MessagePatternUtil$ArgNode;
.super Landroid/icu/text/MessagePatternUtil$MessageContentsNode;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArgNode"
.end annotation


# instance fields
.field private argType:Landroid/icu/text/MessagePattern$ArgType;

.field private complexStyle:Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

.field private name:Ljava/lang/String;

.field private number:I

.field private style:Ljava/lang/String;

.field private typeName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 258
    sget-object v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->ARG:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;-><init>(Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;Landroid/icu/text/MessagePatternUtil$1;)V

    const/4 v0, -0x1

    .line 266
    iput v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->number:I

    return-void
.end method

.method static synthetic access$1002(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 198
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Landroid/icu/text/MessagePatternUtil$ArgNode;I)I
    .locals 0

    .line 198
    iput p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->number:I

    return p1
.end method

.method static synthetic access$1202(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 198
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->typeName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 198
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->style:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 0

    .line 198
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->complexStyle:Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    return-object p1
.end method

.method static synthetic access$800()Landroid/icu/text/MessagePatternUtil$ArgNode;
    .locals 1

    .line 198
    invoke-static {}, Landroid/icu/text/MessagePatternUtil$ArgNode;->createArgNode()Landroid/icu/text/MessagePatternUtil$ArgNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePattern$ArgType;)Landroid/icu/text/MessagePattern$ArgType;
    .locals 0

    .line 198
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    return-object p1
.end method

.method private static createArgNode()Landroid/icu/text/MessagePatternUtil$ArgNode;
    .locals 1

    .line 261
    new-instance v0, Landroid/icu/text/MessagePatternUtil$ArgNode;

    invoke-direct {v0}, Landroid/icu/text/MessagePatternUtil$ArgNode;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getArgType()Landroid/icu/text/MessagePattern$ArgType;
    .locals 0

    .line 203
    iget-object p0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    return-object p0
.end method

.method public getComplexStyle()Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 0

    .line 235
    iget-object p0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->complexStyle:Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNumber()I
    .locals 0

    .line 215
    iget p0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->number:I

    return p0
.end method

.method public getSimpleStyle()Ljava/lang/String;
    .locals 0

    .line 228
    iget-object p0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->style:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 0

    .line 221
    iget-object p0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->typeName:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    sget-object v2, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2c

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    sget-object v3, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v2, v3, :cond_0

    .line 247
    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->style:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->style:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->complexStyle:Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    invoke-virtual {p0}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const/16 p0, 0x7d

    .line 254
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
