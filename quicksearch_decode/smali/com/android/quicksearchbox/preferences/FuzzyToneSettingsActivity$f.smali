.class public Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;
.super Landroid/widget/BaseAdapter;
.source "FuzzyToneSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$c;,
        Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->c:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->a:Landroid/content/Context;

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->b:Landroid/view/LayoutInflater;

    .line 5
    iput-object p2, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->c:Ljava/util/List;

    .line 6
    iput-boolean p3, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->d:Z

    return-void
.end method

.method public static a(II)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;JZ)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->a(JZ)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->c:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a(JZ)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " selected? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSB.FTSA"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$a;-><init>(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;JZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->getItem(I)Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$c;

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0b0046

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 4
    new-instance v0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$c;

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$c;-><init>(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$a;)V

    const v1, 0x7f0800e5

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$c;->a:Landroid/widget/TextView;

    const v1, 0x7f080119

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$c;->b:Landroid/widget/CheckBox;

    const v1, 0x7f0800cf

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$c;->c:Landroid/view/View;

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    :goto_1
    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;

    .line 10
    iget-object v2, v0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$c;->a:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, v1, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;->b:Ljava/lang/String;

    aput-object v4, v3, p3

    iget-object v4, v1, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;->c:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, " = "

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v2, v0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$c;->a:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->d:Z

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 12
    iget-object v2, v0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$c;->b:Landroid/widget/CheckBox;

    new-instance v3, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$b;

    invoke-direct {v3, p0, p1}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$b;-><init>(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;I)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 13
    iget-object v2, v0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$c;->b:Landroid/widget/CheckBox;

    iget-boolean v1, v1, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;->d:Z

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 14
    iget-object v1, v0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$c;->b:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->d:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const v1, 0x7f0800e3

    .line 15
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/ListContentItem;

    iget-object v2, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->c:Ljava/util/List;

    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2, p1}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->a(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lsmartisan/widget/ListContentItem;->setBackgroundStyle(I)V

    .line 17
    iget-object v1, v0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$c;->c:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    if-ne p1, v1, :cond_2

    .line 19
    iget-object p1, v0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f$c;->c:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;->d:Z

    return p1
.end method
