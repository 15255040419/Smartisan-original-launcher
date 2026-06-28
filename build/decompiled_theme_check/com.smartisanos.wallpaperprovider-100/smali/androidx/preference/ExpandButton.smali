.class final Landroidx/preference/ExpandButton;
.super Landroidx/preference/Preference;
.source "ExpandButton.java"


# instance fields
.field private mId:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;J)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Landroidx/preference/ExpandButton;->initLayout()V

    .line 37
    invoke-direct {p0, p2}, Landroidx/preference/ExpandButton;->setSummary(Ljava/util/List;)V

    const-wide/32 p1, 0xf4240

    add-long/2addr p3, p1

    .line 41
    iput-wide p3, p0, Landroidx/preference/ExpandButton;->mId:J

    return-void
.end method

.method private initLayout()V
    .locals 1

    .line 45
    sget v0, Landroidx/preference/R$layout;->expand_button:I

    invoke-virtual {p0, v0}, Landroidx/preference/ExpandButton;->setLayoutResource(I)V

    .line 46
    sget v0, Landroidx/preference/R$drawable;->ic_arrow_down_24dp:I

    invoke-virtual {p0, v0}, Landroidx/preference/ExpandButton;->setIcon(I)V

    .line 47
    sget v0, Landroidx/preference/R$string;->expand_button_title:I

    invoke-virtual {p0, v0}, Landroidx/preference/ExpandButton;->setTitle(I)V

    const/16 v0, 0x3e7

    .line 49
    invoke-virtual {p0, v0}, Landroidx/preference/ExpandButton;->setOrder(I)V

    return-void
.end method

.method private setSummary(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 62
    invoke-virtual {v2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 63
    instance-of v4, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 64
    move-object v5, v2

    check-cast v5, Landroidx/preference/PreferenceGroup;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    invoke-virtual {v2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_0

    .line 68
    check-cast v2, Landroidx/preference/PreferenceGroup;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_3

    move-object v1, v3

    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/ExpandButton;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Landroidx/preference/R$string;->summary_collapsed_preference_list:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v3, v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {p0, v1}, Landroidx/preference/ExpandButton;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method getId()J
    .locals 2

    .line 92
    iget-wide v0, p0, Landroidx/preference/ExpandButton;->mId:J

    return-wide v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 p0, 0x0

    .line 87
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    return-void
.end method
