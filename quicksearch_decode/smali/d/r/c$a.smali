.class public final Ld/r/c$a;
.super Ld/r/c;
.source "Random.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/r/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Ld/r/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld/r/c$a;

    invoke-direct {v0}, Ld/r/c$a;-><init>()V

    sput-object v0, Ld/r/c$a;->c:Ld/r/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/r/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 1
    sget-object v0, Ld/r/c;->b:Ld/r/c$b;

    invoke-virtual {v0, p1}, Ld/r/c$b;->a(I)I

    move-result p1

    return p1
.end method
