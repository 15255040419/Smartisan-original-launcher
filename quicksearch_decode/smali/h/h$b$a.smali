.class public Lh/h$b$a;
.super Lg/f;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/h$b;->e()Lokio/BufferedSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lh/h$b;


# direct methods
.method public constructor <init>(Lh/h$b;Lokio/Source;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh/h$b$a;->b:Lh/h$b;

    invoke-direct {p0, p2}, Lg/f;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public read(Lg/c;J)J
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lg/f;->read(Lg/c;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 2
    iget-object p2, p0, Lh/h$b$a;->b:Lh/h$b;

    iput-object p1, p2, Lh/h$b;->c:Ljava/io/IOException;

    .line 3
    throw p1
.end method
