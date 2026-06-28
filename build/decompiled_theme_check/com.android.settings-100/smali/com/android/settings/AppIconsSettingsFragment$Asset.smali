.class Lcom/android/settings/AppIconsSettingsFragment$Asset;
.super Ljava/lang/Object;
.source "AppIconsSettingsFragment.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppIconsSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Asset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/AppIconsSettingsFragment$Asset;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/AppIconsSettingsFragment$Asset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCollator:Ljava/text/Collator;

.field mLabel:Ljava/lang/String;

.field mLabelEntry:Lcom/android/settings/applications/LabelEntry;

.field mRedirectedIconPath:Ljava/lang/String;

.field mRedirectedState:I

.field mResolveInfo:Landroid/content/pm/ResolveInfo;

.field mShowOfficial:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 948
    new-instance v0, Lcom/android/settings/AppIconsSettingsFragment$Asset$1;

    invoke-direct {v0}, Lcom/android/settings/AppIconsSettingsFragment$Asset$1;-><init>()V

    sput-object v0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Z)V
    .locals 1

    const/4 v0, 0x3

    .line 829
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/AppIconsSettingsFragment$Asset;-><init>(Landroid/content/pm/ResolveInfo;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;ZI)V
    .locals 1

    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mCollator:Ljava/text/Collator;

    .line 833
    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 834
    iput-boolean p2, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mShowOfficial:Z

    .line 835
    iput p3, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedState:I

    .line 836
    invoke-static {}, Lcom/android/settings/SettingsApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->ensureLabel(Landroid/content/Context;)V

    .line 837
    invoke-static {}, Lcom/android/settings/SettingsApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->ensureLabelEntry(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mCollator:Ljava/text/Collator;

    .line 821
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedState:I

    .line 822
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 823
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mShowOfficial:Z

    .line 824
    invoke-static {}, Lcom/android/settings/SettingsApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->ensureLabel(Landroid/content/Context;)V

    .line 825
    invoke-static {}, Lcom/android/settings/SettingsApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->ensureLabelEntry(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/settings/AppIconsSettingsFragment$1;)V
    .locals 0

    .line 811
    invoke-direct {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment$Asset;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/AppIconsSettingsFragment$Asset;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 926
    :cond_0
    iget v0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedState:I

    iget v1, p1, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedState:I

    if-ne v0, v1, :cond_2

    .line 927
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mLabelEntry:Lcom/android/settings/applications/LabelEntry;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mLabelEntry:Lcom/android/settings/applications/LabelEntry;

    if-eqz v1, :cond_1

    .line 928
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mCollator:Ljava/text/Collator;

    iget-object v0, v0, Lcom/android/settings/applications/LabelEntry;->labelPinyin:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mLabelEntry:Lcom/android/settings/applications/LabelEntry;

    iget-object p1, p1, Lcom/android/settings/applications/LabelEntry;->labelPinyin:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mCollator:Ljava/text/Collator;

    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mLabel:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 811
    check-cast p1, Lcom/android/settings/AppIconsSettingsFragment$Asset;

    invoke-virtual {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->compareTo(Lcom/android/settings/AppIconsSettingsFragment$Asset;)I

    move-result p0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method ensureLabel(Landroid/content/Context;)V
    .locals 2

    .line 841
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 842
    invoke-static {}, Lcom/android/settings/applications/ApplicationLabelCache;->getInstance()Lcom/android/settings/applications/ApplicationLabelCache;

    move-result-object v0

    .line 843
    invoke-virtual {p0}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/applications/ApplicationLabelCache;->getLabelEntry(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/applications/LabelEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 845
    iget-object p1, v0, Lcom/android/settings/applications/LabelEntry;->label:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mLabel:Ljava/lang/String;

    goto :goto_0

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mLabel:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public ensureLabelEntry(Landroid/content/Context;)V
    .locals 2

    .line 853
    invoke-static {}, Lcom/android/settings/applications/ApplicationLabelCache;->getInstance()Lcom/android/settings/applications/ApplicationLabelCache;

    move-result-object v0

    .line 854
    invoke-virtual {p0}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/applications/ApplicationLabelCache;->getLabelEntry(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/applications/LabelEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mLabelEntry:Lcom/android/settings/applications/LabelEntry;

    .line 855
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mLabelEntry:Lcom/android/settings/applications/LabelEntry;

    if-nez v0, :cond_0

    .line 856
    invoke-virtual {p0}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mLabel:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/settings/applications/ApplicationLabelUtils;->generatorLabelEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/applications/LabelEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mLabelEntry:Lcom/android/settings/applications/LabelEntry;

    :cond_0
    return-void
.end method

.method public ensureRedirectedIconPath(Landroid/content/res/IconManager;)V
    .locals 3

    .line 873
    invoke-virtual {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getResolveInfoIconResName(Landroid/content/res/IconManager;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 876
    iget v1, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 877
    invoke-virtual {p0}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/content/res/IconManager;->getSecondaryFileByName(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 879
    invoke-virtual {p0}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/content/res/IconManager;->getPrimaryFileByName(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 882
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedIconPath:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public getActivity()Ljava/lang/String;
    .locals 0

    .line 892
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getApkSourceDir()Ljava/lang/String;
    .locals 0

    .line 918
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    return-object p0
.end method

.method public getAppName(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 0

    .line 896
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 897
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getAppVersionName(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 2

    .line 903
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2000

    .line 902
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 905
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package not found:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppIconsSettingsFragment"

    invoke-static {p1, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOfficialIcon(Landroid/content/res/IconManager;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 914
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1, p0}, Landroid/content/res/IconManager;->getUnRedirectedIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 888
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getResolveInfoIconResName(Landroid/content/res/IconManager;)Ljava/lang/String;
    .locals 2

    .line 861
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v0

    .line 862
    invoke-virtual {p0}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/res/IconManager;->getUndirectedResourcesForPackage(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 864
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t find icon resource name for package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " !, this should never happen"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppIconsSettingsFragment"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asset{mRedirectedIconPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedIconPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mRedirectedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mResolveInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mShowOfficial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mShowOfficial:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 967
    iget v0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 968
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 969
    iget-boolean p0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mShowOfficial:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
