.class public Lsmartisan/widget/RadioGroupExpand$a;
.super Ljava/lang/Object;
.source "RadioGroupExpand.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/RadioGroupExpand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/RadioGroupExpand;


# direct methods
.method public constructor <init>(Lsmartisan/widget/RadioGroupExpand;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/RadioGroupExpand$a;->a:Lsmartisan/widget/RadioGroupExpand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/RadioGroupExpand$a;->a:Lsmartisan/widget/RadioGroupExpand;

    invoke-static {v0}, Lsmartisan/widget/RadioGroupExpand;->a(Lsmartisan/widget/RadioGroupExpand;)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/RadioGroupExpand$a;->a:Lsmartisan/widget/RadioGroupExpand;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/RadioGroupExpand$a;->a:Lsmartisan/widget/RadioGroupExpand;

    iget-object v1, v1, Lsmartisan/widget/RadioGroupExpand;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
