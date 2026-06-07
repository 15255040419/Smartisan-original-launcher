.class public Lh/e;
.super Ljava/lang/RuntimeException;
.source "HttpException.java"


# direct methods
.method public constructor <init>(Lh/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/n<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lh/e;->a(Lh/n;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lh/n;->b()I

    .line 3
    invoke-virtual {p1}, Lh/n;->d()Ljava/lang/String;

    return-void
.end method

.method public static a(Lh/n;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/n<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "response == null"

    .line 1
    invoke-static {p0, v0}, Lh/q;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/n;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh/n;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
