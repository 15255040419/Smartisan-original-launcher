.class public final Ld/s/c$a;
.super Ljava/lang/Object;
.source "Ranges.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/s/c;
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
    invoke-direct {p0}, Ld/s/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ld/s/c;
    .locals 1

    .line 1
    invoke-static {}, Ld/s/c;->b()Ld/s/c;

    move-result-object v0

    return-object v0
.end method
