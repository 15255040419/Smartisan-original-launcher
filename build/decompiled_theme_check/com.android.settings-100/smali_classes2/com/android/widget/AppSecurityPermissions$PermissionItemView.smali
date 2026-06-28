.class public Lcom/android/widget/AppSecurityPermissions$PermissionItemView;
.super Landroid/widget/LinearLayout;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionItemView"
.end annotation


# instance fields
.field mDialog:Landroid/app/AlertDialog;

.field mGroup:Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;

.field private mPackageName:Ljava/lang/String;

.field mPerm:Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;

.field private mShowRevokeUI:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 142
    iput-boolean p1, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    const/4 p1, 0x1

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->setClickable(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/widget/AppSecurityPermissions$PermissionItemView;)Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/widget/AppSecurityPermissions$PermissionItemView;)Landroid/content/Context;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addRevokeUIIfNecessary(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    .line 252
    iget-boolean v0, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    if-nez v0, :cond_0

    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;

    iget v0, v0, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    return-void

    .line 263
    :cond_2
    new-instance v0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView$1;

    invoke-direct {v0, p0}, Lcom/android/widget/AppSecurityPermissions$PermissionItemView$1;-><init>(Lcom/android/widget/AppSecurityPermissions$PermissionItemView;)V

    const p0, 0x10406a3

    .line 272
    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p0, 0x104000a

    const/4 v0, 0x0

    .line 273
    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method private getPermissionDesc()Ljava/lang/String;
    .locals 6

    .line 219
    iget-object v0, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 221
    iget-object v2, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;

    iget v2, v2, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->descriptionRes:I

    if-eqz v2, :cond_1

    .line 222
    iget-object p0, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;

    invoke-virtual {p0, v0}, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 223
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 227
    :try_start_0
    iget-object v2, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v2, v2, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 228
    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    iget-object v0, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v0, v0, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->packageName:Ljava/lang/String;

    .line 232
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 233
    invoke-virtual {p0}, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040621

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    .line 235
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object p0, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object p0, p0, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 186
    iget-object p1, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;

    if-eqz p1, :cond_2

    .line 187
    iget-object p1, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 191
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    iget-object v1, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    iget-object v1, v1, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 193
    iget-object v1, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;

    iget v1, v1, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->descriptionRes:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;

    invoke-virtual {v1, p1}, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 198
    :try_start_0
    iget-object v3, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v3, v3, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 199
    invoke-virtual {v3, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    iget-object v3, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v3, v3, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->packageName:Ljava/lang/String;

    .line 203
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 204
    invoke-virtual {p0}, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040621

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v3, v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    .line 206
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-object v1, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v1, v1, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 210
    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 211
    iget-object v1, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-virtual {p0}, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadGroupIcon(Landroid/content/Context;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 212
    invoke-direct {p0, v0}, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->addRevokeUIIfNecessary(Landroid/app/AlertDialog$Builder;)V

    .line 213
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    .line 214
    iget-object p0, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 245
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 246
    iget-object p0, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 247
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public setPermission(Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 1

    .line 153
    iput-object p1, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 154
    iput-object p2, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;

    .line 155
    iput-boolean p6, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    .line 156
    iput-object p5, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mPackageName:Ljava/lang/String;

    const p1, 0x10203e4

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p3, 0x10203e0

    .line 159
    invoke-virtual {p0, p3}, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 161
    iget-object p5, p2, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 162
    iget-boolean p2, p2, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    .line 164
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p6

    const/4 v0, 0x0

    .line 166
    invoke-static {p4, p6, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 167
    invoke-virtual {p6, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 168
    sget-object p4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    .line 169
    invoke-virtual {p6}, Landroid/os/Parcel;->recycle()V

    .line 170
    invoke-virtual {p2, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 171
    invoke-virtual {p2, p5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_0
    move-object p2, p5

    .line 175
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-direct {p0}, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->getPermissionDesc()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 178
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
