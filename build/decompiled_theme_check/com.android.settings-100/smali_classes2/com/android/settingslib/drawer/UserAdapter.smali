.class public Lcom/android/settingslib/drawer/UserAdapter;
.super Ljava/lang/Object;
.source "UserAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/drawer/UserAdapter$UserDetails;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/drawer/UserAdapter$UserDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/drawer/UserAdapter$UserDetails;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 85
    iput-object p2, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    const-string p2, "layout_inflater"

    .line 86
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settingslib/drawer/UserAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A list of user details must be provided"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createUser(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 117
    iget-object p0, p0, Lcom/android/settingslib/drawer/UserAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/settingslib/R$layout;->user_preference:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static createUserAdapter(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settingslib/drawer/UserAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserManager;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)",
            "Lcom/android/settingslib/drawer/UserAdapter;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 208
    new-instance v3, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-direct {v3, v4, p0, p1}, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;-><init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :cond_0
    new-instance p0, Lcom/android/settingslib/drawer/UserAdapter;

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/drawer/UserAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public static createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settingslib/drawer/UserAdapter;
    .locals 3

    .line 190
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 195
    :cond_0
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 197
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 198
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 200
    invoke-static {p0, p1, v0}, Lcom/android/settingslib/drawer/UserAdapter;->createUserAdapter(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settingslib/drawer/UserAdapter;

    move-result-object p0

    return-object p0
.end method

.method private getTitle(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)I
    .locals 0

    .line 107
    invoke-static {p1}, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->access$000(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    const/4 p1, -0x2

    if-eq p0, p1, :cond_1

    .line 109
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    sget p0, Lcom/android/settingslib/R$string;->category_work:I

    return p0

    .line 110
    :cond_1
    :goto_0
    sget p0, Lcom/android/settingslib/R$string;->category_personal:I

    return p0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getCount()I
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/settingslib/drawer/UserAdapter;->createUser(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 100
    :goto_0
    iget-object p3, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    const p3, 0x1020006

    .line 101
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->access$100(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x1020016

    .line 102
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/settingslib/drawer/UserAdapter;->getTitle(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(I)V

    return-object p2
.end method

.method public getItem(I)Lcom/android/settingslib/drawer/UserAdapter$UserDetails;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/UserAdapter;->getItem(I)Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    invoke-static {p0}, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->access$000(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUserHandle(I)Landroid/os/UserHandle;
    .locals 1

    if-ltz p1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;

    invoke-static {p0}, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->access$000(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 152
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settingslib/drawer/UserAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getViewTypeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/settingslib/drawer/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method
