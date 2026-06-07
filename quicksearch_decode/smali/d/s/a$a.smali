.class public final Ld/s/a$a;
.super Ljava/lang/Object;
.source "Progressions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/s/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ld/q/c/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ld/s/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)Ld/s/a;
    .locals 1

    .line 1
    new-instance v0, Ld/s/a;

    invoke-direct {v0, p1, p2, p3}, Ld/s/a;-><init>(III)V

    return-object v0
.end method
