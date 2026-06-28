.class final Landroid/icu/lang/UScriptRun$ParenStackEntry;
.super Ljava/lang/Object;
.source "UScriptRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/lang/UScriptRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParenStackEntry"
.end annotation


# instance fields
.field pairIndex:I

.field scriptCode:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput p1, p0, Landroid/icu/lang/UScriptRun$ParenStackEntry;->pairIndex:I

    .line 434
    iput p2, p0, Landroid/icu/lang/UScriptRun$ParenStackEntry;->scriptCode:I

    return-void
.end method
