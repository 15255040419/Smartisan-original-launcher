.class public final Lf/g$a;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:[Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>(Lf/g;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-boolean v0, p1, Lf/g;->a:Z

    iput-boolean v0, p0, Lf/g$a;->a:Z

    .line 5
    iget-object v0, p1, Lf/g;->c:[Ljava/lang/String;

    iput-object v0, p0, Lf/g$a;->b:[Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lf/g;->d:[Ljava/lang/String;

    iput-object v0, p0, Lf/g$a;->c:[Ljava/lang/String;

    .line 7
    iget-boolean p1, p1, Lf/g;->b:Z

    iput-boolean p1, p0, Lf/g$a;->d:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lf/g$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Z)Lf/g$a;
    .locals 1

    .line 18
    iget-boolean v0, p0, Lf/g$a;->a:Z

    if-eqz v0, :cond_0

    .line 19
    iput-boolean p1, p0, Lf/g$a;->d:Z

    return-object p0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS extensions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs a([Lf/e;)Lf/g$a;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf/g$a;->a:Z

    if-eqz v0, :cond_1

    .line 2
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 4
    aget-object v2, p1, v1

    iget-object v2, v2, Lf/e;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lf/g$a;->a([Ljava/lang/String;)Lf/g$a;

    return-object p0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs a([Lf/x;)Lf/g$a;
    .locals 3

    .line 12
    iget-boolean v0, p0, Lf/g$a;->a:Z

    if-eqz v0, :cond_1

    .line 13
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 14
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 15
    aget-object v2, p1, v1

    iget-object v2, v2, Lf/x;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, v0}, Lf/g$a;->b([Ljava/lang/String;)Lf/g$a;

    return-object p0

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs a([Ljava/lang/String;)Lf/g$a;
    .locals 1

    .line 7
    iget-boolean v0, p0, Lf/g$a;->a:Z

    if-eqz v0, :cond_1

    .line 8
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lf/g$a;->b:[Ljava/lang/String;

    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one cipher suite is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lf/g;
    .locals 1

    .line 21
    new-instance v0, Lf/g;

    invoke-direct {v0, p0}, Lf/g;-><init>(Lf/g$a;)V

    return-object v0
.end method

.method public varargs b([Ljava/lang/String;)Lf/g$a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/g$a;->a:Z

    if-eqz v0, :cond_1

    .line 2
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lf/g$a;->c:[Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one TLS version is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
