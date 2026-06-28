.class public Landroid/icu/impl/number/ParameterizedModifier;
.super Ljava/lang/Object;
.source "ParameterizedModifier.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field frozen:Z

.field final mods:[Landroid/icu/impl/number/Modifier;

.field private final negative:Landroid/icu/impl/number/Modifier;

.field private final positive:Landroid/icu/impl/number/Modifier;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Landroid/icu/impl/number/ParameterizedModifier;->positive:Landroid/icu/impl/number/Modifier;

    .line 41
    iput-object v0, p0, Landroid/icu/impl/number/ParameterizedModifier;->negative:Landroid/icu/impl/number/Modifier;

    .line 42
    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/icu/impl/number/Modifier;

    iput-object v0, p0, Landroid/icu/impl/number/ParameterizedModifier;->mods:[Landroid/icu/impl/number/Modifier;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Landroid/icu/impl/number/ParameterizedModifier;->frozen:Z

    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/number/Modifier;Landroid/icu/impl/number/Modifier;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroid/icu/impl/number/ParameterizedModifier;->positive:Landroid/icu/impl/number/Modifier;

    .line 27
    iput-object p2, p0, Landroid/icu/impl/number/ParameterizedModifier;->negative:Landroid/icu/impl/number/Modifier;

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Landroid/icu/impl/number/ParameterizedModifier;->mods:[Landroid/icu/impl/number/Modifier;

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Landroid/icu/impl/number/ParameterizedModifier;->frozen:Z

    return-void
.end method

.method private static getModIndex(ZLandroid/icu/impl/StandardPlural;)I
    .locals 0

    .line 68
    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public freeze()V
    .locals 1

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Landroid/icu/impl/number/ParameterizedModifier;->frozen:Z

    return-void
.end method

.method public getModifier(Z)Landroid/icu/impl/number/Modifier;
    .locals 0

    if-eqz p1, :cond_0

    .line 58
    iget-object p0, p0, Landroid/icu/impl/number/ParameterizedModifier;->negative:Landroid/icu/impl/number/Modifier;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/icu/impl/number/ParameterizedModifier;->positive:Landroid/icu/impl/number/Modifier;

    :goto_0
    return-object p0
.end method

.method public getModifier(ZLandroid/icu/impl/StandardPlural;)Landroid/icu/impl/number/Modifier;
    .locals 0

    .line 64
    iget-object p0, p0, Landroid/icu/impl/number/ParameterizedModifier;->mods:[Landroid/icu/impl/number/Modifier;

    invoke-static {p1, p2}, Landroid/icu/impl/number/ParameterizedModifier;->getModIndex(ZLandroid/icu/impl/StandardPlural;)I

    move-result p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public setModifier(ZLandroid/icu/impl/StandardPlural;Landroid/icu/impl/number/Modifier;)V
    .locals 0

    .line 48
    iget-object p0, p0, Landroid/icu/impl/number/ParameterizedModifier;->mods:[Landroid/icu/impl/number/Modifier;

    invoke-static {p1, p2}, Landroid/icu/impl/number/ParameterizedModifier;->getModIndex(ZLandroid/icu/impl/StandardPlural;)I

    move-result p1

    aput-object p3, p0, p1

    return-void
.end method
