.class public final Lf/z/i/k;
.super Ljava/io/IOException;
.source "StreamResetException.java"


# instance fields
.field public final a:Lf/z/i/b;


# direct methods
.method public constructor <init>(Lf/z/i/b;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stream was reset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lf/z/i/k;->a:Lf/z/i/b;

    return-void
.end method
