.class Landroid/support/v7/app/AppCompatDelegateImpl$3;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$3;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 2
    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$3;->this$0:Landroid/support/v7/app/AppCompatDelegateImpl;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImpl;->updateStatusGuard(I)I

    move-result p0

    if-eq v0, p0, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v1

    .line 5
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v2

    .line 6
    invoke-virtual {p2, v0, p0, v1, v2}, Landroid/support/v4/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p2

    .line 7
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method
