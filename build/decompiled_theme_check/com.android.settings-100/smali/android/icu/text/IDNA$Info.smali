.class public final Landroid/icu/text/IDNA$Info;
.super Ljava/lang/Object;
.source "IDNA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/IDNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation


# instance fields
.field private errors:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/IDNA$Error;",
            ">;"
        }
    .end annotation
.end field

.field private isBiDi:Z

.field private isOkBiDi:Z

.field private isTransDiff:Z

.field private labelErrors:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/IDNA$Error;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const-class v0, Landroid/icu/text/IDNA$Error;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    .line 211
    const-class v0, Landroid/icu/text/IDNA$Error;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/IDNA$Info;->labelErrors:Ljava/util/EnumSet;

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isTransDiff:Z

    .line 213
    iput-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isBiDi:Z

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isOkBiDi:Z

    return-void
.end method

.method static synthetic access$000(Landroid/icu/text/IDNA$Info;)V
    .locals 0

    .line 205
    invoke-direct {p0}, Landroid/icu/text/IDNA$Info;->reset()V

    return-void
.end method

.method static synthetic access$100(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;
    .locals 0

    .line 205
    iget-object p0, p0, Landroid/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    return-object p0
.end method

.method static synthetic access$200(Landroid/icu/text/IDNA$Info;)Ljava/util/EnumSet;
    .locals 0

    .line 205
    iget-object p0, p0, Landroid/icu/text/IDNA$Info;->labelErrors:Ljava/util/EnumSet;

    return-object p0
.end method

.method static synthetic access$302(Landroid/icu/text/IDNA$Info;Z)Z
    .locals 0

    .line 205
    iput-boolean p1, p0, Landroid/icu/text/IDNA$Info;->isTransDiff:Z

    return p1
.end method

.method static synthetic access$400(Landroid/icu/text/IDNA$Info;)Z
    .locals 0

    .line 205
    iget-boolean p0, p0, Landroid/icu/text/IDNA$Info;->isBiDi:Z

    return p0
.end method

.method static synthetic access$402(Landroid/icu/text/IDNA$Info;Z)Z
    .locals 0

    .line 205
    iput-boolean p1, p0, Landroid/icu/text/IDNA$Info;->isBiDi:Z

    return p1
.end method

.method static synthetic access$500(Landroid/icu/text/IDNA$Info;)Z
    .locals 0

    .line 205
    iget-boolean p0, p0, Landroid/icu/text/IDNA$Info;->isOkBiDi:Z

    return p0
.end method

.method static synthetic access$502(Landroid/icu/text/IDNA$Info;Z)Z
    .locals 0

    .line 205
    iput-boolean p1, p0, Landroid/icu/text/IDNA$Info;->isOkBiDi:Z

    return p1
.end method

.method private reset()V
    .locals 1

    .line 241
    iget-object v0, p0, Landroid/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    .line 242
    iget-object v0, p0, Landroid/icu/text/IDNA$Info;->labelErrors:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clear()V

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isTransDiff:Z

    .line 244
    iput-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isBiDi:Z

    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Landroid/icu/text/IDNA$Info;->isOkBiDi:Z

    return-void
.end method


# virtual methods
.method public getErrors()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/icu/text/IDNA$Error;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object p0, p0, Landroid/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    return-object p0
.end method

.method public hasErrors()Z
    .locals 0

    .line 220
    iget-object p0, p0, Landroid/icu/text/IDNA$Info;->errors:Ljava/util/EnumSet;

    invoke-virtual {p0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isTransitionalDifferent()Z
    .locals 0

    .line 238
    iget-boolean p0, p0, Landroid/icu/text/IDNA$Info;->isTransDiff:Z

    return p0
.end method
