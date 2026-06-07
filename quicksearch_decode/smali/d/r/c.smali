.class public abstract Ld/r/c;
.super Ljava/lang/Object;
.source "Random.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/r/c$a;,
        Ld/r/c$b;
    }
.end annotation


# static fields
.field public static final a:Ld/r/c;

.field public static final b:Ld/r/c$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld/r/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld/r/c$b;-><init>(Ld/q/c/c;)V

    sput-object v0, Ld/r/c;->b:Ld/r/c$b;

    .line 1
    sget-object v0, Ld/o/b;->a:Ld/o/a;

    invoke-virtual {v0}, Ld/o/a;->a()Ld/r/c;

    move-result-object v0

    sput-object v0, Ld/r/c;->a:Ld/r/c;

    .line 2
    sget-object v0, Ld/r/c$a;->c:Ld/r/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic b()Ld/r/c;
    .locals 1

    .line 1
    sget-object v0, Ld/r/c;->a:Ld/r/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p0, v0}, Ld/r/c;->a(I)I

    move-result v0

    return v0
.end method

.method public abstract a(I)I
.end method
