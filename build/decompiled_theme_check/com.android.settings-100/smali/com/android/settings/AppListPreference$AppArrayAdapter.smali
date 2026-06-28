.class public Lcom/android/settings/AppListPreference$AppArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mImageDrawables:[Landroid/graphics/drawable/Drawable;

.field private mSelectedIndex:I

.field final synthetic this$0:Lcom/android/settings/AppListPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/AppListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    .line 70
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    .line 71
    iput p6, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    .line 72
    iput-object p5, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference$AppArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7f0d0051

    .line 83
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020016

    .line 84
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference$AppArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget p3, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    if-ne p1, p3, :cond_0

    iget-object p3, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    invoke-static {p3}, Lcom/android/settings/AppListPreference;->access$100(Lcom/android/settings/AppListPreference;)I

    move-result p3

    if-ne p1, p3, :cond_0

    const p3, 0x7f0a0920

    .line 87
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 88
    :cond_0
    iget p3, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mSelectedIndex:I

    if-ne p1, p3, :cond_1

    const p3, 0x7f0a0224

    .line 89
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object p3, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    invoke-static {p3}, Lcom/android/settings/AppListPreference;->access$100(Lcom/android/settings/AppListPreference;)I

    move-result p3

    if-ne p1, p3, :cond_2

    const p3, 0x7f0a0922

    .line 91
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    const p3, 0x1020006

    .line 93
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 94
    iget-object v1, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->mImageDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, p1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object p3, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    invoke-static {p3}, Lcom/android/settings/AppListPreference;->access$000(Lcom/android/settings/AppListPreference;)[Ljava/lang/CharSequence;

    move-result-object p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    invoke-static {p3}, Lcom/android/settings/AppListPreference;->access$000(Lcom/android/settings/AppListPreference;)[Ljava/lang/CharSequence;

    move-result-object p3

    aget-object p3, p3, p1

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    move p3, v0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p3, 0x1

    .line 98
    :goto_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    if-nez p3, :cond_5

    const p3, 0x1020010

    .line 100
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 101
    iget-object p0, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    invoke-static {p0}, Lcom/android/settings/AppListPreference;->access$000(Lcom/android/settings/AppListPreference;)[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    invoke-static {v0}, Lcom/android/settings/AppListPreference;->access$000(Lcom/android/settings/AppListPreference;)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/AppListPreference$AppArrayAdapter;->this$0:Lcom/android/settings/AppListPreference;

    invoke-static {p0}, Lcom/android/settings/AppListPreference;->access$000(Lcom/android/settings/AppListPreference;)[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
