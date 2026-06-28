.class Landroidx/appcompat/widget/AppCompatTextHelper$ApplyTextViewCallback$TypefaceApplyCallback;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatTextHelper$ApplyTextViewCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TypefaceApplyCallback"
.end annotation


# instance fields
.field private final mParent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/widget/AppCompatTextHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mTypeface:Landroid/graphics/Typeface;

.field final synthetic this$0:Landroidx/appcompat/widget/AppCompatTextHelper$ApplyTextViewCallback;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatTextHelper$ApplyTextViewCallback;Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/widget/AppCompatTextHelper;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .line 359
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper$ApplyTextViewCallback$TypefaceApplyCallback;->this$0:Landroidx/appcompat/widget/AppCompatTextHelper$ApplyTextViewCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper$ApplyTextViewCallback$TypefaceApplyCallback;->mParent:Ljava/lang/ref/WeakReference;

    .line 361
    iput-object p3, p0, Landroidx/appcompat/widget/AppCompatTextHelper$ApplyTextViewCallback$TypefaceApplyCallback;->mTypeface:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 366
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper$ApplyTextViewCallback$TypefaceApplyCallback;->mParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextHelper;

    if-nez v0, :cond_0

    return-void

    .line 370
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextHelper$ApplyTextViewCallback$TypefaceApplyCallback;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->setTypefaceByCallback(Landroid/graphics/Typeface;)V

    return-void
.end method
