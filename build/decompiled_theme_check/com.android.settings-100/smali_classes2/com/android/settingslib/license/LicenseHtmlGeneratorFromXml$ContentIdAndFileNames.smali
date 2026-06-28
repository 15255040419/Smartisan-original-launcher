.class Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;
.super Ljava/lang/Object;
.source "LicenseHtmlGeneratorFromXml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContentIdAndFileNames"
.end annotation


# instance fields
.field final mContentId:Ljava/lang/String;

.field final mFileNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;->mFileNameList:Ljava/util/List;

    .line 101
    iput-object p1, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;->mContentId:Ljava/lang/String;

    return-void
.end method
