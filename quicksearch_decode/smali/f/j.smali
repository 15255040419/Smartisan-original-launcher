.class public final Lf/j;
.super Lf/t;
.source "FormBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/j$a;
    }
.end annotation


# static fields
.field public static final c:Lf/n;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "application/x-www-form-urlencoded"

    .line 1
    invoke-static {v0}, Lf/n;->a(Ljava/lang/String;)Lf/n;

    move-result-object v0

    sput-object v0, Lf/j;->c:Lf/n;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf/t;-><init>()V

    .line 2
    invoke-static {p1}, Lf/z/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf/j;->a:Ljava/util/List;

    .line 3
    invoke-static {p2}, Lf/z/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf/j;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lf/j;->a(Lokio/BufferedSink;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lokio/BufferedSink;Z)J
    .locals 3

    if-eqz p2, :cond_0

    .line 3
    new-instance p1, Lg/c;

    invoke-direct {p1}, Lg/c;-><init>()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lokio/BufferedSink;->buffer()Lg/c;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lf/j;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    if-lez v0, :cond_1

    const/16 v2, 0x26

    .line 6
    invoke-virtual {p1, v2}, Lg/c;->writeByte(I)Lg/c;

    .line 7
    :cond_1
    iget-object v2, p0, Lf/j;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lg/c;->writeUtf8(Ljava/lang/String;)Lg/c;

    const/16 v2, 0x3d

    .line 8
    invoke-virtual {p1, v2}, Lg/c;->writeByte(I)Lg/c;

    .line 9
    iget-object v2, p0, Lf/j;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lg/c;->writeUtf8(Ljava/lang/String;)Lg/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 10
    invoke-virtual {p1}, Lg/c;->c()J

    move-result-wide v0

    .line 11
    invoke-virtual {p1}, Lg/c;->a()V

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    return-wide v0
.end method

.method public a(Lokio/BufferedSink;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lf/j;->a(Lokio/BufferedSink;Z)J

    return-void
.end method

.method public b()Lf/n;
    .locals 1

    .line 1
    sget-object v0, Lf/j;->c:Lf/n;

    return-object v0
.end method
