.class final Lcom/google/common/util/concurrent/FuturesGetChecked;
.super Ljava/lang/Object;
.source "FuturesGetChecked.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder;,
        Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;
    }
.end annotation


# static fields
.field private static final WITH_STRING_PARAM_FIRST:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering<",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 250
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/FuturesGetChecked$1;

    invoke-direct {v1}, Lcom/google/common/util/concurrent/FuturesGetChecked$1;-><init>()V

    .line 251
    invoke-virtual {v0, v1}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/FuturesGetChecked;->WITH_STRING_PARAM_FIRST:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bestGetCheckedTypeValidator()Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;
    .locals 1

    .line 91
    sget-object v0, Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder;->BEST_VALIDATOR:Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;

    return-object v0
.end method

.method static checkExceptionClassValidity(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 292
    invoke-static {p0}, Lcom/google/common/util/concurrent/FuturesGetChecked;->isCheckedException(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "Futures.getChecked exception type (%s) must not be a RuntimeException"

    .line 291
    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 296
    invoke-static {p0}, Lcom/google/common/util/concurrent/FuturesGetChecked;->hasConstructorUsableByGetChecked(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "Futures.getChecked exception type (%s) must be an accessible class with an accessible constructor whose parameters (if any) must be of type String and/or Throwable"

    .line 295
    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static classValueValidator()Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;
    .locals 1

    .line 102
    sget-object v0, Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder$ClassValueValidator;->INSTANCE:Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder$ClassValueValidator;

    return-object v0
.end method

.method static getChecked(Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;Ljava/util/concurrent/Future;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/lang/Class<",
            "TX;>;)TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-interface {p0, p2}, Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;->validateClass(Ljava/lang/Class;)V

    .line 56
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/google/common/util/concurrent/FuturesGetChecked;->wrapAndThrowExceptionOrError(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 62
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :catch_1
    move-exception p0

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 59
    invoke-static {p2, p0}, Lcom/google/common/util/concurrent/FuturesGetChecked;->newWithCause(Ljava/lang/Class;Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0
.end method

.method static getChecked(Ljava/util/concurrent/Future;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/lang/Class<",
            "TX;>;)TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-static {}, Lcom/google/common/util/concurrent/FuturesGetChecked;->bestGetCheckedTypeValidator()Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/google/common/util/concurrent/FuturesGetChecked;->getChecked(Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;Ljava/util/concurrent/Future;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static getChecked(Ljava/util/concurrent/Future;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/lang/Class<",
            "TX;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/google/common/util/concurrent/FuturesGetChecked;->bestGetCheckedTypeValidator()Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;->validateClass(Ljava/lang/Class;)V

    .line 73
    :try_start_0
    invoke-interface {p0, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/FuturesGetChecked;->wrapAndThrowExceptionOrError(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 81
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :catch_1
    move-exception p0

    .line 78
    invoke-static {p1, p0}, Lcom/google/common/util/concurrent/FuturesGetChecked;->newWithCause(Ljava/lang/Class;Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :catch_2
    move-exception p0

    .line 75
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 76
    invoke-static {p1, p0}, Lcom/google/common/util/concurrent/FuturesGetChecked;->newWithCause(Ljava/lang/Class;Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0
.end method

.method private static hasConstructorUsableByGetChecked(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;)Z"
        }
    .end annotation

    .line 217
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/FuturesGetChecked;->newWithCause(Ljava/lang/Class;Ljava/lang/Throwable;)Ljava/lang/Exception;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method static isCheckedException(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;)Z"
        }
    .end annotation

    .line 286
    const-class v0, Ljava/lang/RuntimeException;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static newFromConstructor(Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "TX;>;",
            "Ljava/lang/Throwable;",
            ")TX;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 262
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 263
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 264
    :goto_0
    array-length v3, v0

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 265
    aget-object v3, v0, v2

    .line 266
    const-class v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 267
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_1

    .line 268
    :cond_0
    const-class v5, Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    aput-object p1, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v4

    .line 275
    :cond_2
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v4
.end method

.method private static newWithCause(Ljava/lang/Class;Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Ljava/lang/Throwable;",
            ")TX;"
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lcom/google/common/util/concurrent/FuturesGetChecked;->preferringStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 229
    invoke-static {v1, p1}, Lcom/google/common/util/concurrent/FuturesGetChecked;->newFromConstructor(Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1

    .line 232
    invoke-virtual {v1, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1
    return-object v1

    .line 237
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No appropriate constructor for exception of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " in response to chained exception"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static preferringStrings(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "TX;>;>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "TX;>;>;"
        }
    .end annotation

    .line 246
    sget-object v0, Lcom/google/common/util/concurrent/FuturesGetChecked;->WITH_STRING_PARAM_FIRST:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/Ordering;->sortedCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static weakSetValidator()Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;
    .locals 1

    .line 96
    sget-object v0, Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder$WeakSetValidator;->INSTANCE:Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder$WeakSetValidator;

    return-object v0
.end method

.method private static wrapAndThrowExceptionOrError(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TX;>;)V^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_1

    .line 203
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 204
    new-instance p1, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {p1, p0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 206
    :cond_0
    invoke-static {p1, p0}, Lcom/google/common/util/concurrent/FuturesGetChecked;->newWithCause(Ljava/lang/Class;Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    .line 201
    :cond_1
    new-instance p1, Lcom/google/common/util/concurrent/ExecutionError;

    check-cast p0, Ljava/lang/Error;

    invoke-direct {p1, p0}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw p1
.end method
