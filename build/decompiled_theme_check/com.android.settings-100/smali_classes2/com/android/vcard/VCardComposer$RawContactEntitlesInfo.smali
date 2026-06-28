.class public Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;
.super Ljava/lang/Object;
.source "VCardComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawContactEntitlesInfo"
.end annotation


# instance fields
.field public final contactId:J

.field public final rawContactEntitlesUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;J)V
    .locals 0

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput-object p1, p0, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;->rawContactEntitlesUri:Landroid/net/Uri;

    .line 505
    iput-wide p2, p0, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;->contactId:J

    return-void
.end method
