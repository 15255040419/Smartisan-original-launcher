.class public final Lafu/org/checkerframework/checker/nullness/NullnessUtils;
.super Ljava/lang/Object;
.source "NullnessUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance p0, Ljava/lang/AssertionError;

    const-string/jumbo v0, "shouldn\'t be instantiated"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static castNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Lafu/org/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    return-object p0
.end method

.method private static castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 169
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 171
    aget-object v1, p0, v0

    invoke-static {v1}, Lafu/org/checkerframework/checker/nullness/NullnessUtils;->checkIfArray(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static castNonNullDeep([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation runtime Lafu/org/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 102
    invoke-static {p0}, Lafu/org/checkerframework/checker/nullness/NullnessUtils;->castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static castNonNullDeep([[Ljava/lang/Object;)[[Ljava/lang/Object;
    .locals 0
    .annotation runtime Lafu/org/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)[[TT;"
        }
    .end annotation

    .line 117
    invoke-static {p0}, Lafu/org/checkerframework/checker/nullness/NullnessUtils;->castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/lang/Object;

    check-cast p0, [[Ljava/lang/Object;

    return-object p0
.end method

.method public static castNonNullDeep([[[Ljava/lang/Object;)[[[Ljava/lang/Object;
    .locals 0
    .annotation runtime Lafu/org/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[[TT;)[[[TT;"
        }
    .end annotation

    .line 132
    invoke-static {p0}, Lafu/org/checkerframework/checker/nullness/NullnessUtils;->castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[[Ljava/lang/Object;

    check-cast p0, [[[Ljava/lang/Object;

    return-object p0
.end method

.method public static castNonNullDeep([[[[Ljava/lang/Object;)[[[[Ljava/lang/Object;
    .locals 0
    .annotation runtime Lafu/org/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[[[TT;)[[[[TT;"
        }
    .end annotation

    .line 147
    invoke-static {p0}, Lafu/org/checkerframework/checker/nullness/NullnessUtils;->castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[[[Ljava/lang/Object;

    check-cast p0, [[[[Ljava/lang/Object;

    return-object p0
.end method

.method public static castNonNullDeep([[[[[Ljava/lang/Object;)[[[[[Ljava/lang/Object;
    .locals 0
    .annotation runtime Lafu/org/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "#1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[[[[TT;)[[[[[TT;"
        }
    .end annotation

    .line 162
    invoke-static {p0}, Lafu/org/checkerframework/checker/nullness/NullnessUtils;->castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[[[[Ljava/lang/Object;

    check-cast p0, [[[[[Ljava/lang/Object;

    return-object p0
.end method

.method private static checkIfArray(Ljava/lang/Object;)V
    .locals 1

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lafu/org/checkerframework/checker/nullness/NullnessUtils;->castNonNullArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
