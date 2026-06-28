.class public abstract Lcom/google/common/base/Converter;
.super Ljava/lang/Object;
.source "Converter.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Converter$IdentityConverter;,
        Lcom/google/common/base/Converter$FunctionBasedConverter;,
        Lcom/google/common/base/Converter$ConverterComposition;,
        Lcom/google/common/base/Converter$ReverseConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "TA;TB;>;"
    }
.end annotation


# instance fields
.field private final handleNullAutomatically:Z

.field private transient reverse:Lcom/google/common/base/Converter;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Converter<",
            "TB;TA;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 125
    invoke-direct {p0, v0}, Lcom/google/common/base/Converter;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-boolean p1, p0, Lcom/google/common/base/Converter;->handleNullAutomatically:Z

    return-void
.end method

.method public static from(Lcom/google/common/base/Function;Lcom/google/common/base/Function;)Lcom/google/common/base/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function<",
            "-TA;+TB;>;",
            "Lcom/google/common/base/Function<",
            "-TB;+TA;>;)",
            "Lcom/google/common/base/Converter<",
            "TA;TB;>;"
        }
    .end annotation

    .line 430
    new-instance v0, Lcom/google/common/base/Converter$FunctionBasedConverter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/base/Converter$FunctionBasedConverter;-><init>(Lcom/google/common/base/Function;Lcom/google/common/base/Function;Lcom/google/common/base/Converter$1;)V

    return-object v0
.end method

.method public static identity()Lcom/google/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Converter<",
            "TT;TT;>;"
        }
    .end annotation

    .line 479
    sget-object v0, Lcom/google/common/base/Converter$IdentityConverter;->INSTANCE:Lcom/google/common/base/Converter$IdentityConverter;

    return-object v0
.end method


# virtual methods
.method public final andThen(Lcom/google/common/base/Converter;)Lcom/google/common/base/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Converter<",
            "TB;TC;>;)",
            "Lcom/google/common/base/Converter<",
            "TA;TC;>;"
        }
    .end annotation

    .line 315
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->doAndThen(Lcom/google/common/base/Converter;)Lcom/google/common/base/Converter;

    move-result-object p0

    return-object p0
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 392
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public convertAll(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TA;>;)",
            "Ljava/lang/Iterable<",
            "TB;>;"
        }
    .end annotation

    const-string v0, "fromIterable"

    .line 203
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v0, Lcom/google/common/base/Converter$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Converter$1;-><init>(Lcom/google/common/base/Converter;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method correctedDoBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 185
    iget-boolean v0, p0, Lcom/google/common/base/Converter;->handleNullAutomatically:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->doBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    .line 189
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->doBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 175
    iget-boolean v0, p0, Lcom/google/common/base/Converter;->handleNullAutomatically:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0

    .line 179
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/base/Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method doAndThen(Lcom/google/common/base/Converter;)Lcom/google/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Converter<",
            "TB;TC;>;)",
            "Lcom/google/common/base/Converter<",
            "TA;TC;>;"
        }
    .end annotation

    .line 320
    new-instance v0, Lcom/google/common/base/Converter$ConverterComposition;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Converter;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Converter$ConverterComposition;-><init>(Lcom/google/common/base/Converter;Lcom/google/common/base/Converter;)V

    return-object v0
.end method

.method protected abstract doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation
.end method

.method protected abstract doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 408
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public reverse()Lcom/google/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter<",
            "TB;TA;>;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/google/common/base/Converter;->reverse:Lcom/google/common/base/Converter;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/google/common/base/Converter$ReverseConverter;

    invoke-direct {v0, p0}, Lcom/google/common/base/Converter$ReverseConverter;-><init>(Lcom/google/common/base/Converter;)V

    iput-object v0, p0, Lcom/google/common/base/Converter;->reverse:Lcom/google/common/base/Converter;

    :cond_0
    return-object v0
.end method
