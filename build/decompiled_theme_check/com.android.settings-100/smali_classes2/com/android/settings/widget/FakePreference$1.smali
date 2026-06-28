.class Lcom/android/settings/widget/FakePreference$1;
.super Ljava/lang/Object;
.source "FakePreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/FakePreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/FakePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/FakePreference;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/widget/FakePreference$1;->this$0:Lcom/android/settings/widget/FakePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
