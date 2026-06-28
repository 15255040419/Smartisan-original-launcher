.class Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 0

    .line 1
    new-instance p1, Landroid/view/View;

    iget-object p0, p0, Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->setMinimumHeight(I)V

    return-object p1
.end method
