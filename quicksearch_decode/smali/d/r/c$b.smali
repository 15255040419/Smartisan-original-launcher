.class public final Ld/r/c$b;
.super Ld/r/c;
.source "Random.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/r/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/r/c;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ld/q/c/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ld/r/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 2
    invoke-static {}, Ld/r/c;->b()Ld/r/c;

    move-result-object v0

    invoke-virtual {v0}, Ld/r/c;->a()I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 1

    .line 1
    invoke-static {}, Ld/r/c;->b()Ld/r/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/r/c;->a(I)I

    move-result p1

    return p1
.end method
