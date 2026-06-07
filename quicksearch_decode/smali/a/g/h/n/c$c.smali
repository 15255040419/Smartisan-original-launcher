.class public La/g/h/n/c$c;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/g/h/n/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La/g/h/n/c$c;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(IIIIZZ)La/g/h/n/c$c;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, La/g/h/n/c$c;

    invoke-static/range {p0 .. p5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-direct {v0, p0}, La/g/h/n/c$c;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/16 p5, 0x13

    if-lt v0, p5, :cond_1

    .line 3
    new-instance p5, La/g/h/n/c$c;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-direct {p5, p0}, La/g/h/n/c$c;-><init>(Ljava/lang/Object;)V

    return-object p5

    .line 4
    :cond_1
    new-instance p0, La/g/h/n/c$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, La/g/h/n/c$c;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
