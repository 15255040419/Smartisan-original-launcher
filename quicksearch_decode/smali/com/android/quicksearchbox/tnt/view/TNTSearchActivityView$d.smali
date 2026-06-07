.class public final Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$d;
.super Ljava/lang/Object;
.source "TNTSearchActivityView.kt"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$d;

    invoke-direct {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$d;-><init>()V

    sput-object v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$d;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p1, "keyEvent"

    invoke-static {p3, p1}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x13

    if-eq p1, p2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x14

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
