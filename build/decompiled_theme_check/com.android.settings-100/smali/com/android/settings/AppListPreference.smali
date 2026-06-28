.class public Lcom/android/settings/AppListPreference;
.super Lcom/android/settings/CustomListPreference;
.source "AppListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppListPreference$SavedState;,
        Lcom/android/settings/AppListPreference$AppArrayAdapter;
    }
.end annotation


# static fields
.field public static final ITEM_NONE_VALUE:Ljava/lang/String; = ""


# instance fields
.field private mEntryDrawables:[Landroid/graphics/drawable/Drawable;

.field protected final mForWork:Z

.field private mShowItemNone:Z

.field private mSummaries:[Ljava/lang/CharSequence;

.field private mSystemAppIndex:I

.field protected final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/settings/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    const/4 v1, -0x1

    .line 62
    iput v1, p0, Lcom/android/settings/AppListPreference;->mSystemAppIndex:I

    .line 122
    sget-object v1, Lcom/android/settings/R$styleable;->WorkPreference:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 123
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/AppListPreference;->mForWork:Z

    .line 124
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p1

    .line 125
    iget-boolean v0, p0, Lcom/android/settings/AppListPreference;->mForWork:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/settings/AppListPreference;->mUserId:I

    .line 127
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 60
    iput-boolean p3, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    const/4 p4, -0x1

    .line 62
    iput p4, p0, Lcom/android/settings/AppListPreference;->mSystemAppIndex:I

    .line 111
    sget-object p4, Lcom/android/settings/R$styleable;->WorkPreference:[I

    invoke-virtual {p1, p2, p4, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 112
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/settings/AppListPreference;->mForWork:Z

    .line 113
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p1

    .line 114
    iget-boolean p3, p0, Lcom/android/settings/AppListPreference;->mForWork:Z

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/settings/AppListPreference;->mUserId:I

    .line 116
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AppListPreference;)[Ljava/lang/CharSequence;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/AppListPreference;->mSummaries:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/AppListPreference;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/settings/AppListPreference;->mSystemAppIndex:I

    return p0
.end method


# virtual methods
.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 8

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    iget-boolean v1, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const/4 v0, -0x1

    goto :goto_2

    .line 241
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/AppListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    :goto_2
    move v7, v0

    .line 242
    new-instance v0, Lcom/android/settings/AppListPreference$AppArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d0051

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/AppListPreference$AppArrayAdapter;-><init>(Lcom/android/settings/AppListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->createListAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 260
    instance-of v0, p1, Lcom/android/settings/AppListPreference$SavedState;

    if-eqz v0, :cond_0

    .line 261
    check-cast p1, Lcom/android/settings/AppListPreference$SavedState;

    .line 262
    iget-boolean v0, p1, Lcom/android/settings/AppListPreference$SavedState;->showItemNone:Z

    iput-boolean v0, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    .line 263
    iget-object v0, p1, Lcom/android/settings/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/android/settings/AppListPreference$SavedState;->value:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AppListPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p1, Lcom/android/settings/AppListPreference$SavedState;->summaries:[Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/AppListPreference;->mSummaries:[Ljava/lang/CharSequence;

    .line 265
    iget-object p1, p1, Lcom/android/settings/AppListPreference$SavedState;->superState:Landroid/os/Parcelable;

    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 267
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 254
    invoke-super {p0}, Lcom/android/settings/CustomListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 255
    new-instance v6, Lcom/android/settings/AppListPreference$SavedState;

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AppListPreference;->mSummaries:[Ljava/lang/CharSequence;

    iget-boolean v4, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/AppListPreference$SavedState;-><init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Parcelable;)V

    return-object v6
.end method

.method public setComponentNames([Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/AppListPreference;->setComponentNames([Landroid/content/ComponentName;Landroid/content/ComponentName;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setComponentNames([Landroid/content/ComponentName;Landroid/content/ComponentName;[Ljava/lang/CharSequence;)V
    .locals 10

    .line 194
    iput-object p3, p0, Lcom/android/settings/AppListPreference;->mSummaries:[Ljava/lang/CharSequence;

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    .line 197
    array-length v0, p1

    iget-boolean v1, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    add-int/2addr v0, v1

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    const/4 v4, -0x1

    move v5, v0

    move v6, v4

    .line 202
    :goto_0
    array-length v7, p1

    if-ge v5, v7, :cond_2

    .line 204
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    aget-object v8, p1, v5

    iget v9, p0, Lcom/android/settings/AppListPreference;->mUserId:I

    invoke-interface {v7, v8, v0, v9}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 207
    :cond_0
    invoke-virtual {v7, p3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    aget-object v8, p1, v5

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-virtual {v7, p3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 210
    aget-object v7, p1, v5

    invoke-virtual {v7, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_1

    move v6, v5

    :catch_0
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 218
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    if-eqz p1, :cond_3

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1201b9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 219
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, ""

    .line 221
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f080204

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/CharSequence;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 227
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/CharSequence;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 228
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/settings/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    if-eq v6, v4, :cond_4

    .line 231
    invoke-virtual {p0, v6}, Lcom/android/settings/AppListPreference;->setValueIndex(I)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference;->setValue(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/AppListPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 10

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 143
    array-length v1, p1

    iget-boolean v2, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    add-int/2addr v1, v2

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, -0x1

    .line 148
    iput v1, p0, Lcom/android/settings/AppListPreference;->mSystemAppIndex:I

    const/4 v5, 0x0

    move v7, v1

    move v6, v5

    .line 149
    :goto_0
    array-length v8, p1

    if-ge v6, v8, :cond_2

    .line 151
    :try_start_0
    aget-object v8, p1, v6

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/AppListPreference;->mUserId:I

    invoke-virtual {v0, v8, v5, v9}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 153
    invoke-virtual {v8, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {v8, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 156
    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 157
    invoke-virtual {v9, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v6

    .line 160
    :cond_0
    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_1

    if-eqz p3, :cond_1

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 161
    invoke-virtual {v8, p3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 162
    iput v6, p0, Lcom/android/settings/AppListPreference;->mSystemAppIndex:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 169
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    if-eqz p1, :cond_3

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1201b9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 170
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, ""

    .line 172
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f080204

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/CharSequence;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 178
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/CharSequence;

    invoke-interface {v3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 179
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v4, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/settings/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    if-eq v7, v1, :cond_4

    .line 182
    invoke-virtual {p0, v7}, Lcom/android/settings/AppListPreference;->setValueIndex(I)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference;->setValue(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setShowItemNone(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    return-void
.end method
