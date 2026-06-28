.class Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;
.super Ljava/lang/Object;
.source "GridViewWithHeaderAndFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/GridViewWithHeaderAndFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedViewInfo"
.end annotation


# instance fields
.field public data:Ljava/lang/Object;

.field public isSelectable:Z

.field public view:Landroid/view/View;

.field public viewContainer:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/GridViewWithHeaderAndFooter$1;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FixedViewInfo;-><init>()V

    return-void
.end method
