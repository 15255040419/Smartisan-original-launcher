.class public La/e/a/h/p$a;
.super Ljava/lang/Object;
.source "Snapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/e/a/h/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:La/e/a/h/e;

.field public b:La/e/a/h/e;

.field public c:I

.field public d:La/e/a/h/e$c;

.field public e:I


# direct methods
.method public constructor <init>(La/e/a/h/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La/e/a/h/p$a;->a:La/e/a/h/e;

    .line 3
    invoke-virtual {p1}, La/e/a/h/e;->g()La/e/a/h/e;

    move-result-object v0

    iput-object v0, p0, La/e/a/h/p$a;->b:La/e/a/h/e;

    .line 4
    invoke-virtual {p1}, La/e/a/h/e;->b()I

    move-result v0

    iput v0, p0, La/e/a/h/p$a;->c:I

    .line 5
    invoke-virtual {p1}, La/e/a/h/e;->f()La/e/a/h/e$c;

    move-result-object v0

    iput-object v0, p0, La/e/a/h/p$a;->d:La/e/a/h/e$c;

    .line 6
    invoke-virtual {p1}, La/e/a/h/e;->a()I

    move-result p1

    iput p1, p0, La/e/a/h/p$a;->e:I

    return-void
.end method


# virtual methods
.method public a(La/e/a/h/f;)V
    .locals 4

    .line 1
    iget-object v0, p0, La/e/a/h/p$a;->a:La/e/a/h/e;

    invoke-virtual {v0}, La/e/a/h/e;->h()La/e/a/h/e$d;

    move-result-object v0

    invoke-virtual {p1, v0}, La/e/a/h/f;->a(La/e/a/h/e$d;)La/e/a/h/e;

    move-result-object p1

    .line 2
    iget-object v0, p0, La/e/a/h/p$a;->b:La/e/a/h/e;

    iget v1, p0, La/e/a/h/p$a;->c:I

    iget-object v2, p0, La/e/a/h/p$a;->d:La/e/a/h/e$c;

    iget v3, p0, La/e/a/h/p$a;->e:I

    invoke-virtual {p1, v0, v1, v2, v3}, La/e/a/h/e;->a(La/e/a/h/e;ILa/e/a/h/e$c;I)Z

    return-void
.end method

.method public b(La/e/a/h/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, La/e/a/h/p$a;->a:La/e/a/h/e;

    invoke-virtual {v0}, La/e/a/h/e;->h()La/e/a/h/e$d;

    move-result-object v0

    invoke-virtual {p1, v0}, La/e/a/h/f;->a(La/e/a/h/e$d;)La/e/a/h/e;

    move-result-object p1

    iput-object p1, p0, La/e/a/h/p$a;->a:La/e/a/h/e;

    .line 2
    iget-object p1, p0, La/e/a/h/p$a;->a:La/e/a/h/e;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, La/e/a/h/e;->g()La/e/a/h/e;

    move-result-object p1

    iput-object p1, p0, La/e/a/h/p$a;->b:La/e/a/h/e;

    .line 4
    iget-object p1, p0, La/e/a/h/p$a;->a:La/e/a/h/e;

    invoke-virtual {p1}, La/e/a/h/e;->b()I

    move-result p1

    iput p1, p0, La/e/a/h/p$a;->c:I

    .line 5
    iget-object p1, p0, La/e/a/h/p$a;->a:La/e/a/h/e;

    invoke-virtual {p1}, La/e/a/h/e;->f()La/e/a/h/e$c;

    move-result-object p1

    iput-object p1, p0, La/e/a/h/p$a;->d:La/e/a/h/e$c;

    .line 6
    iget-object p1, p0, La/e/a/h/p$a;->a:La/e/a/h/e;

    invoke-virtual {p1}, La/e/a/h/e;->a()I

    move-result p1

    iput p1, p0, La/e/a/h/p$a;->e:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, La/e/a/h/p$a;->b:La/e/a/h/e;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, La/e/a/h/p$a;->c:I

    .line 9
    sget-object v0, La/e/a/h/e$c;->b:La/e/a/h/e$c;

    iput-object v0, p0, La/e/a/h/p$a;->d:La/e/a/h/e$c;

    .line 10
    iput p1, p0, La/e/a/h/p$a;->e:I

    :goto_0
    return-void
.end method
