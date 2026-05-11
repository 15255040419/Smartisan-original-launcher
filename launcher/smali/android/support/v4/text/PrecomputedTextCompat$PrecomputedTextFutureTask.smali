.class Landroid/support/v4/text/PrecomputedTextCompat$PrecomputedTextFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "PrecomputedTextCompat.java"


# direct methods
.method constructor <init>(Landroid/support/v4/text/PrecomputedTextCompat$Params;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;-><init>(Landroid/support/v4/text/PrecomputedTextCompat$Params;Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method
