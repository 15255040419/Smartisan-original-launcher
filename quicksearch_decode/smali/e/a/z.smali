.class public final Le/a/z;
.super Ld/n/a;
.source "CoroutineName.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/z$a;
    }
.end annotation


# static fields
.field public static final b:Le/a/z$a;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/z$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/z$a;-><init>(Ld/q/c/c;)V

    sput-object v0, Le/a/z;->b:Le/a/z$a;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/z;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/z;

    iget-object v0, p0, Le/a/z;->a:Ljava/lang/String;

    iget-object p1, p1, Le/a/z;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/z;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Le/a/z;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoroutineName("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
