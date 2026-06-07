.class public abstract La/q/a/a/h$f;
.super La/q/a/a/h$e;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/q/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation


# instance fields
.field public a:[La/g/c/b$b;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, La/q/a/a/h$e;-><init>(La/q/a/a/h$a;)V

    .line 2
    iput-object v0, p0, La/q/a/a/h$f;->a:[La/g/c/b$b;

    return-void
.end method

.method public constructor <init>(La/q/a/a/h$f;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, La/q/a/a/h$e;-><init>(La/q/a/a/h$a;)V

    .line 4
    iput-object v0, p0, La/q/a/a/h$f;->a:[La/g/c/b$b;

    .line 5
    iget-object v0, p1, La/q/a/a/h$f;->b:Ljava/lang/String;

    iput-object v0, p0, La/q/a/a/h$f;->b:Ljava/lang/String;

    .line 6
    iget v0, p1, La/q/a/a/h$f;->c:I

    iput v0, p0, La/q/a/a/h$f;->c:I

    .line 7
    iget-object p1, p1, La/q/a/a/h$f;->a:[La/g/c/b$b;

    invoke-static {p1}, La/g/c/b;->a([La/g/c/b$b;)[La/g/c/b$b;

    move-result-object p1

    iput-object p1, p0, La/q/a/a/h$f;->a:[La/g/c/b$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, La/q/a/a/h$f;->a:[La/g/c/b$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0, p1}, La/g/c/b$b;->a([La/g/c/b$b;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[La/g/c/b$b;
    .locals 1

    .line 1
    iget-object v0, p0, La/q/a/a/h$f;->a:[La/g/c/b$b;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La/q/a/a/h$f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([La/g/c/b$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, La/q/a/a/h$f;->a:[La/g/c/b$b;

    invoke-static {v0, p1}, La/g/c/b;->a([La/g/c/b$b;[La/g/c/b$b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, La/g/c/b;->a([La/g/c/b$b;)[La/g/c/b$b;

    move-result-object p1

    iput-object p1, p0, La/q/a/a/h$f;->a:[La/g/c/b$b;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, La/q/a/a/h$f;->a:[La/g/c/b$b;

    invoke-static {v0, p1}, La/g/c/b;->b([La/g/c/b$b;[La/g/c/b$b;)V

    :goto_0
    return-void
.end method
