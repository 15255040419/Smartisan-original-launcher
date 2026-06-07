.class public La/a/c/a/a$d;
.super La/a/c/a/a$g;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:La/q/a/a/b;


# direct methods
.method public constructor <init>(La/q/a/a/b;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, La/a/c/a/a$g;-><init>(La/a/c/a/a$a;)V

    .line 2
    iput-object p1, p0, La/a/c/a/a$d;->a:La/q/a/a/b;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/c/a/a$d;->a:La/q/a/a/b;

    invoke-virtual {v0}, La/q/a/a/b;->start()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/c/a/a$d;->a:La/q/a/a/b;

    invoke-virtual {v0}, La/q/a/a/b;->stop()V

    return-void
.end method
