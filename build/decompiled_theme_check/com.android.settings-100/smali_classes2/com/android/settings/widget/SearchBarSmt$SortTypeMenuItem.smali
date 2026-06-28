.class public Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;
.super Ljava/lang/Object;
.source "SearchBarSmt.java"

# interfaces
.implements Lsmartisanos/widget/support/SmartisanMenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SearchBarSmt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SortTypeMenuItem"
.end annotation


# instance fields
.field public mIconRes:I

.field public mSelected:Z

.field public mTitleResId:I

.field public mValue:I

.field final synthetic this$0:Lcom/android/settings/widget/SearchBarSmt;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/SearchBarSmt;IZI)V
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 225
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;-><init>(Lcom/android/settings/widget/SearchBarSmt;IZII)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/widget/SearchBarSmt;IZII)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput p2, p0, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;->mTitleResId:I

    .line 230
    iput-boolean p3, p0, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;->mSelected:Z

    .line 231
    iput p4, p0, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;->mValue:I

    .line 232
    iput p5, p0, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;->mIconRes:I

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    iget p0, p0, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;->mTitleResId:I

    invoke-static {v0, p0}, Lcom/android/settings/widget/SearchBarSmt;->access$600(Lcom/android/settings/widget/SearchBarSmt;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()I
    .locals 0

    .line 250
    iget p0, p0, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;->mValue:I

    return p0
.end method

.method public hasMenuIcon()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSelected()Z
    .locals 0

    .line 254
    iget-boolean p0, p0, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;->mSelected:Z

    return p0
.end method

.method public setMenuIcon(Landroid/widget/ImageView;)V
    .locals 0

    .line 246
    iget p0, p0, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;->mIconRes:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 258
    iput-boolean p1, p0, Lcom/android/settings/widget/SearchBarSmt$SortTypeMenuItem;->mSelected:Z

    return-void
.end method
