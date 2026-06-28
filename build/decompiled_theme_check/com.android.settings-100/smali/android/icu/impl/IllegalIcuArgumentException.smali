.class public Landroid/icu/impl/IllegalIcuArgumentException;
.super Ljava/lang/IllegalArgumentException;
.source "IllegalIcuArgumentException.java"


# static fields
.field private static final serialVersionUID:J = 0x3496294bfd718099L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized initCause(Ljava/lang/Throwable;)Landroid/icu/impl/IllegalIcuArgumentException;
    .locals 0

    monitor-enter p0

    .line 34
    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/IllegalIcuArgumentException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Landroid/icu/impl/IllegalIcuArgumentException;->initCause(Ljava/lang/Throwable;)Landroid/icu/impl/IllegalIcuArgumentException;

    move-result-object p0

    return-object p0
.end method
