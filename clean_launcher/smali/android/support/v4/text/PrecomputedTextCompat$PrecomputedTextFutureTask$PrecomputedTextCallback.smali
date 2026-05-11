.class Landroid/support/v4/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private mParams:Landroid/support/v4/text/PrecomputedTextCompat$Params;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/support/v4/text/PrecomputedTextCompat$Params;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;->mParams:Landroid/support/v4/text/PrecomputedTextCompat$Params;

    .line 3
    iput-object p2, p0, Landroid/support/v4/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;->mText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public call()Landroid/support/v4/text/PrecomputedTextCompat;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/support/v4/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;->mText:Ljava/lang/CharSequence;

    iget-object p0, p0, Landroid/support/v4/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;->mParams:Landroid/support/v4/text/PrecomputedTextCompat$Params;

    invoke-static {v0, p0}, Landroid/support/v4/text/PrecomputedTextCompat;->create(Ljava/lang/CharSequence;Landroid/support/v4/text/PrecomputedTextCompat$Params;)Landroid/support/v4/text/PrecomputedTextCompat;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/text/PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback;->call()Landroid/support/v4/text/PrecomputedTextCompat;

    move-result-object p0

    return-object p0
.end method
