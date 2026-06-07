.class public La/g/h/n/d$b;
.super La/g/h/n/d$a;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/g/h/n/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(La/g/h/n/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, La/g/h/n/d$a;-><init>(La/g/h/n/d;)V

    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, La/g/h/n/d$a;->a:La/g/h/n/d;

    invoke-virtual {v0, p1}, La/g/h/n/d;->b(I)La/g/h/n/c;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, La/g/h/n/c;->y()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method
