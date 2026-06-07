.class public final Lh/r/a/b;
.super Ljava/lang/Object;
.source "GsonRequestBodyConverter.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "TT;",
        "Lf/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lf/n;

.field public static final d:Ljava/nio/charset/Charset;


# instance fields
.field public final a:Lb/c/b/c;

.field public final b:Lb/c/b/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/b/m<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=UTF-8"

    .line 1
    invoke-static {v0}, Lf/n;->b(Ljava/lang/String;)Lf/n;

    move-result-object v0

    sput-object v0, Lh/r/a/b;->c:Lf/n;

    const-string v0, "UTF-8"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lh/r/a/b;->d:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lb/c/b/c;Lb/c/b/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/c;",
            "Lb/c/b/m<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh/r/a/b;->a:Lb/c/b/c;

    .line 3
    iput-object p2, p0, Lh/r/a/b;->b:Lb/c/b/m;

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Lf/t;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lf/t;"
        }
    .end annotation

    .line 2
    new-instance v0, Lg/c;

    invoke-direct {v0}, Lg/c;-><init>()V

    .line 3
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Lg/c;->outputStream()Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Lh/r/a/b;->d:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 4
    iget-object v2, p0, Lh/r/a/b;->a:Lb/c/b/c;

    invoke-virtual {v2, v1}, Lb/c/b/c;->a(Ljava/io/Writer;)Lb/c/b/q/c;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lh/r/a/b;->b:Lb/c/b/m;

    invoke-virtual {v2, v1, p1}, Lb/c/b/m;->a(Lb/c/b/q/c;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v1}, Lb/c/b/q/c;->close()V

    .line 7
    sget-object p1, Lh/r/a/b;->c:Lf/n;

    invoke-virtual {v0}, Lg/c;->readByteString()Lg/d;

    move-result-object v0

    invoke-static {p1, v0}, Lf/t;->a(Lf/n;Lg/d;)Lf/t;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lh/r/a/b;->convert(Ljava/lang/Object;)Lf/t;

    move-result-object p1

    return-object p1
.end method
