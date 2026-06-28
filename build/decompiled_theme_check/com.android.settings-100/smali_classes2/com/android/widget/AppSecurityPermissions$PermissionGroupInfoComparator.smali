.class Lcom/android/widget/AppSecurityPermissions$PermissionGroupInfoComparator;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionGroupInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/widget/AppSecurityPermissions$PermissionGroupInfoComparator;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/widget/AppSecurityPermissions$1;)V
    .locals 0

    .line 597
    invoke-direct {p0}, Lcom/android/widget/AppSecurityPermissions$PermissionGroupInfoComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;)I
    .locals 0

    .line 601
    iget-object p0, p0, Lcom/android/widget/AppSecurityPermissions$PermissionGroupInfoComparator;->sCollator:Ljava/text/Collator;

    iget-object p1, p1, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    iget-object p2, p2, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 597
    check-cast p1, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    check-cast p2, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/widget/AppSecurityPermissions$PermissionGroupInfoComparator;->compare(Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;)I

    move-result p0

    return p0
.end method
